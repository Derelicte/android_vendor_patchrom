.class Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/CallLogInsertionHelper;


# static fields
.field private static sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 57
    iput-object p1, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, countryIso:Ljava/lang/String;
    const-string v3, "countryiso"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, number:Ljava/lang/String;
    const-string v3, "geocoded_location"

    iget-object v4, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 73
    .local v2, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const-string v3, "normalized_number"

    if-nez v2, :cond_0

    .end local v1           #number:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 73
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
