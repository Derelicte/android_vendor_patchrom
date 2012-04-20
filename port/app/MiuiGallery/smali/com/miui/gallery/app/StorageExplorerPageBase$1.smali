.class Lcom/miui/gallery/app/StorageExplorerPageBase$1;
.super Lcom/miui/gallery/ui/GLView;
.source "StorageExplorerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->access$000(Lcom/miui/gallery/app/StorageExplorerPageBase;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 81
    return-void
.end method
