.class public Lcom/android/contacts/calllog/AsyncDataLoader;
.super Ljava/lang/Object;
.source "AsyncDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/AsyncDataLoader$1;,
        Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;,
        Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;
    }
.end annotation


# instance fields
.field private mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mIsTelocationEnabled:Z

.field private mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

.field private mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 35
    new-instance v0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    const v1, 0x3020049

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    .line 36
    new-instance v0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    .line 37
    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/AsyncDataLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mIsTelocationEnabled:Z

    return v0
.end method


# virtual methods
.method public cancelPhotoRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 71
    return-void
.end method

.method public cancelTelocationRequest(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->cancelRequest(Landroid/widget/TextView;)V

    .line 79
    return-void
.end method

.method public loadContactPhoto(Landroid/widget/ImageView;JZZ)V
    .locals 6
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 60
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    .line 61
    return-void
.end method

.method public loadSPPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "spNumber"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 65
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "number"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 54
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->pause()V

    .line 55
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->pause()V

    .line 56
    return-void
.end method

.method public resume(Z)V
    .locals 1
    .parameter "isTelocationEnabled"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mIsTelocationEnabled:Z

    .line 47
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    .line 48
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->resume()V

    .line 49
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->resume()V

    .line 50
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mContactPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->stop()V

    .line 41
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mSPPhotoLoader:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->stop()V

    .line 42
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader;->mTelocationLoader:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->stop()V

    .line 43
    return-void
.end method
