.class Lcom/android/calendar/EventInfoFragment$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
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
    .line 319
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$1;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$1;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$1;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 323
    return-void
.end method
