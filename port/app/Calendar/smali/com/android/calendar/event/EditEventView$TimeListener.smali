.class Lcom/android/calendar/event/EditEventView$TimeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    .line 213
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v10, 0x1

    .line 218
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v7

    .line 219
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v2

    .line 226
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    if-ne v8, v9, :cond_1

    .line 228
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 229
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 231
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 232
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 233
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 236
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 237
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 251
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    :cond_0
    :goto_0
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 253
    .local v0, endMillis:J
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 254
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v5, v6}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 255
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    #calls: Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 256
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->updateHomeTime()V
    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;)V

    .line 257
    return-void

    .line 240
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_1
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 241
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 242
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 246
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    iget v8, v7, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method
