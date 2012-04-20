.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    .line 62
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 63
    .local v0, na:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 65
    .local v1, nb:Lcom/android/internal/statusbar/StatusBarNotification;
    iget v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    iget v6, v1, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    sub-int v2, v5, v6

    .line 66
    .local v2, priDiff:I
    if-eqz v2, :cond_0

    .line 69
    .end local v2           #priDiff:I
    :goto_0
    return v2

    .line 68
    .restart local v2       #priDiff:I
    :cond_0
    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    iget-object v7, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v7, Landroid/app/Notification;->when:J

    sub-long v3, v5, v7

    .line 69
    .local v3, whenDiff:J
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    long-to-int v5, v3

    :goto_1
    move v2, v5

    goto :goto_0

    :cond_1
    iget-wide v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->firstWhen:J

    iget-wide v7, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->firstWhen:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
