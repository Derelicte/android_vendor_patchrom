.class Lcom/android/updater/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ShareActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/updater/ShareActivity$2;->this$0:Lcom/android/updater/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/updater/ShareActivity$2;->this$0:Lcom/android/updater/ShareActivity;

    invoke-static {}, Lcom/android/updater/ShareActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/updater/ShareActivity;->share(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/updater/ShareActivity;->access$100(Lcom/android/updater/ShareActivity;Ljava/lang/String;)V

    .line 366
    return-void
.end method
