.class Lcom/miui/gallery/app/PhotoPage$3;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemInvalid()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 294
    return-void
.end method
