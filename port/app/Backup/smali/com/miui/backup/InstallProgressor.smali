.class Lcom/miui/backup/InstallProgressor;
.super Ljava/lang/Object;
.source "RestoreCmd.java"


# static fields
.field private static sInstallRate:D

.field private static sTotalElapsedTime:J


# instance fields
.field private mFileSize:J

.field private mProgress:D

.field private mProgressPerWait:D

.field private mUpdateCount:I

.field private mWaitInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 286
    const-wide v0, 0x408f400000000000L

    sput-wide v0, Lcom/miui/backup/InstallProgressor;->sInstallRate:D

    .line 287
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    return-void
.end method

.method constructor <init>(JI)V
    .locals 8
    .parameter "fileSize"
    .parameter "waitInterval"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    .line 289
    iput-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mProgressPerWait:D

    .line 290
    iput v4, p0, Lcom/miui/backup/InstallProgressor;->mUpdateCount:I

    .line 291
    iput v4, p0, Lcom/miui/backup/InstallProgressor;->mWaitInterval:I

    .line 292
    iput-wide v6, p0, Lcom/miui/backup/InstallProgressor;->mFileSize:J

    .line 295
    iput-wide p1, p0, Lcom/miui/backup/InstallProgressor;->mFileSize:J

    .line 296
    iput p3, p0, Lcom/miui/backup/InstallProgressor;->mWaitInterval:I

    .line 297
    iget-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mFileSize:J

    long-to-double v2, v2

    sget-wide v4, Lcom/miui/backup/InstallProgressor;->sInstallRate:D

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 298
    .local v0, totalTime:J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 299
    iget v2, p0, Lcom/miui/backup/InstallProgressor;->mWaitInterval:I

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v0

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mProgressPerWait:D

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const-wide/high16 v2, 0x4059

    iput-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mProgressPerWait:D

    goto :goto_0
.end method

.method private modulateInstallRate()V
    .locals 6

    .prologue
    .line 323
    sget-wide v2, Lcom/miui/backup/InstallProgressor;->sInstallRate:D

    double-to-int v2, v2

    int-to-long v2, v2

    sget-wide v4, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/miui/backup/InstallProgressor;->mFileSize:J

    add-long v0, v2, v4

    .line 324
    .local v0, elapsedSize:J
    sget-wide v2, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    iget v4, p0, Lcom/miui/backup/InstallProgressor;->mUpdateCount:I

    iget v5, p0, Lcom/miui/backup/InstallProgressor;->mWaitInterval:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    .line 325
    sget-wide v2, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 326
    sget-wide v2, Lcom/miui/backup/InstallProgressor;->sTotalElapsedTime:J

    div-long v2, v0, v2

    long-to-double v2, v2

    sput-wide v2, Lcom/miui/backup/InstallProgressor;->sInstallRate:D

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 318
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    .line 319
    invoke-direct {p0}, Lcom/miui/backup/InstallProgressor;->modulateInstallRate()V

    .line 320
    return-void
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    double-to-int v0, v0

    return v0
.end method

.method public update()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059

    .line 310
    iget-wide v0, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    iget-wide v2, p0, Lcom/miui/backup/InstallProgressor;->mProgressPerWait:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    .line 311
    iget-wide v0, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 312
    iput-wide v4, p0, Lcom/miui/backup/InstallProgressor;->mProgress:D

    .line 314
    :cond_0
    iget v0, p0, Lcom/miui/backup/InstallProgressor;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/backup/InstallProgressor;->mUpdateCount:I

    .line 315
    return-void
.end method
