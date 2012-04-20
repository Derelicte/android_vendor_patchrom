.class public abstract Lcom/miui/milk/control/local/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# instance fields
.field protected mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field protected mCurrExportIndex:J

.field protected mCurrImportIndex:J

.field protected mException:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mTotalExportSize:J

.field protected mTotalImportSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/milk/control/local/BaseController;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/BaseController;->mResolver:Landroid/content/ContentResolver;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/BaseController;->mCanceled:Z

    .line 27
    return-void
.end method

.method public abstract export(Ljava/io/File;)V
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/miui/milk/control/local/BaseController;->mCurrExportIndex:J

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/miui/milk/control/local/BaseController;->mCurrImportIndex:J

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/miui/milk/control/local/BaseController;->mTotalExportSize:J

    return-wide v0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/miui/milk/control/local/BaseController;->mTotalImportSize:J

    return-wide v0
.end method

.method public abstract importData(Ljava/io/File;)V
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/milk/control/local/BaseController;->mException:Z

    return v0
.end method
