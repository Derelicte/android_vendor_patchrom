.class Lcom/android/updater/ApplyUpdateFragment$5;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$5;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$5;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-virtual {v0}, Lcom/android/updater/ApplyUpdateFragment;->switchSystem()V

    .line 557
    return-void
.end method
