.class Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$clockOnOff:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;Landroid/widget/CheckBox;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 96
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClockFragment;->updateAlarm(ZLcom/android/deskclock/Alarm;)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;ZLcom/android/deskclock/Alarm;)V

    .line 97
    return-void
.end method
