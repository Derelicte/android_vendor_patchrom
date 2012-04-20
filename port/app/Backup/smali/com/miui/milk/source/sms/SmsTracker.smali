.class public Lcom/miui/milk/source/sms/SmsTracker;
.super Lcom/miui/milk/tracker/TypeGuidTracker;
.source "SmsTracker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;)V
    .locals 0
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/tracker/TypeGuidTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsTracker;->COLUMN_ID:Ljava/lang/String;

    .line 19
    const-string v0, "type"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsTracker;->COLUMN_TYPE:Ljava/lang/String;

    .line 20
    return-void
.end method
