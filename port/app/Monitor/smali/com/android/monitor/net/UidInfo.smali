.class public Lcom/android/monitor/net/UidInfo;
.super Ljava/lang/Object;
.source "UidInfo.java"


# instance fields
.field public mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundBytes:J

.field public mEnableMobile:Z

.field public mEnableWifi:Z

.field public mForegroundBytes:J

.field public mIsSystemApp:Z

.field public mMobileRxBytes:[J

.field public mMobileTxBytes:[J

.field public mRxBytes:[J

.field public mTxBytes:[J

.field public mUid:I

.field public mUidDetail:Lcom/android/monitor/net/UidDetail;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/android/monitor/net/UidInfo;->mUid:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/net/UidInfo;->mApplications:Ljava/util/List;

    .line 25
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    .line 26
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    .line 27
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    .line 28
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    .line 29
    iput-boolean v2, p0, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    .line 31
    return-void
.end method


# virtual methods
.method public addApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/monitor/net/UidInfo;->mApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/monitor/net/UidInfo;->mIsSystemApp:Z

    .line 38
    :cond_0
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/monitor/net/UidInfo;->mUidDetail:Lcom/android/monitor/net/UidDetail;

    iget-object v0, v0, Lcom/android/monitor/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/monitor/net/UidInfo;->mUidDetail:Lcom/android/monitor/net/UidDetail;

    iget-object v0, v0, Lcom/android/monitor/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
