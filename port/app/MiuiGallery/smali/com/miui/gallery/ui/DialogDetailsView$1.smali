.class Lcom/miui/gallery/ui/DialogDetailsView$1;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DialogDetailsView;->setDetails(Lcom/miui/gallery/data/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/ui/DialogDetailsView$1;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$1;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/miui/gallery/ui/DialogDetailsView;->access$000(Lcom/miui/gallery/ui/DialogDetailsView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    return-void
.end method
