.class Lcom/android/calendar/EventInfoFragment$8;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$8;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$8;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3000(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$8;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$2502(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 1839
    :cond_0
    return-void
.end method
