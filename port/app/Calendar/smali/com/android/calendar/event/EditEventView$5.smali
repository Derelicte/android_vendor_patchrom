.class Lcom/android/calendar/event/EditEventView$5;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$5;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1117
    return-void

    .line 1116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
