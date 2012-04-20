.class Lcom/miui/milk/ui/CloudBaseFragment$5;
.super Ljava/lang/Object;
.source "CloudBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/CloudBaseFragment;->restore(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseFragment$5;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment$5;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    invoke-virtual {v0}, Lcom/miui/milk/ui/CloudBaseFragment;->doRestore()V

    .line 253
    return-void
.end method
