.class Lcom/android/updater/UpdateState;
.super Ljava/lang/Object;
.source "InstallUpdateService.java"


# static fields
.field static INSTANCE:Lcom/android/updater/UpdateState;


# instance fields
.field mLog:Ljava/lang/String;

.field mProgress:F

.field mProgressScopeDuration:J

.field mProgressScopeSize:F

.field mProgressScopeStart:F

.field mProgressScopeTime:J

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/updater/UpdateState;->INSTANCE:Lcom/android/updater/UpdateState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/android/updater/UpdateState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/updater/UpdateState;->INSTANCE:Lcom/android/updater/UpdateState;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/updater/UpdateState;

    invoke-direct {v0}, Lcom/android/updater/UpdateState;-><init>()V

    sput-object v0, Lcom/android/updater/UpdateState;->INSTANCE:Lcom/android/updater/UpdateState;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/updater/UpdateState;->INSTANCE:Lcom/android/updater/UpdateState;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    iput v0, p0, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    .line 47
    iput v0, p0, Lcom/android/updater/UpdateState;->mProgress:F

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/updater/UpdateState;->mProgressScopeDuration:J

    iput-wide v0, p0, Lcom/android/updater/UpdateState;->mProgressScopeTime:J

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/updater/UpdateState;->mStatus:I

    .line 51
    return-void
.end method
