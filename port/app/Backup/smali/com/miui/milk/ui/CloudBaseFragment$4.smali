.class Lcom/miui/milk/ui/CloudBaseFragment$4;
.super Ljava/lang/Object;
.source "CloudBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/CloudBaseFragment;
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
    .line 157
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseFragment$4;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment$4;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    .line 160
    return-void
.end method
