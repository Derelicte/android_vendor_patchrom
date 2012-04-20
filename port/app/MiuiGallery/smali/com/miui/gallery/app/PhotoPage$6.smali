.class Lcom/miui/gallery/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V
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
    .line 650
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$900(Lcom/miui/gallery/app/PhotoPage;)V

    .line 657
    :cond_0
    return-void
.end method
