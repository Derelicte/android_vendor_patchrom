.class final Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitableAccountTypeCache"
.end annotation


# instance fields
.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLastSet:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->mTimeLastSet:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCachedValue(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->mInvitableAccountTypes:Ljava/util/Map;

    .line 821
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->mTimeLastSet:J

    .line 822
    return-void
.end method
