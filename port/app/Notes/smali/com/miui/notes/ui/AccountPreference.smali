.class public Lcom/miui/notes/ui/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public setDefaultAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 35
    return-void
.end method
