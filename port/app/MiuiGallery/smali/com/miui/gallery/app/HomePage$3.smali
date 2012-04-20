.class Lcom/miui/gallery/app/HomePage$3;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/HomePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$3;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$3;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/app/StorageExplorerPage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 593
    return-void
.end method
