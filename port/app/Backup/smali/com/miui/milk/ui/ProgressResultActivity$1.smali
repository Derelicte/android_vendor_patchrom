.class Lcom/miui/milk/ui/ProgressResultActivity$1;
.super Ljava/lang/Object;
.source "ProgressResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ProgressResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ProgressResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressResultActivity$1;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity$1;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ProgressResultActivity;->finish()V

    .line 43
    return-void
.end method
