.class public Lcom/miui/milk/control/local/Alarm$Columns;
.super Ljava/lang/Object;
.source "AlarmController.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/control/local/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALARM_QUERY_COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "content://com.android.deskclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/control/local/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alarmtime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/control/local/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
