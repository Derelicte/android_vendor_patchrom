.class Lcom/miui/gallery/app/PhotoPage$7;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoPage;->showDetails(I)V
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
    .line 785
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$7;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$7;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->hideDetails()V
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$1100(Lcom/miui/gallery/app/PhotoPage;)V

    .line 788
    return-void
.end method
