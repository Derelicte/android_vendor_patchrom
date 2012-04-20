.class public Lcom/android/deskclock/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const-string v0, "content://com.android.deskclock/stopwatch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/Stopwatch;->CONTENT_URI:Landroid/net/Uri;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "total_elapsed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lap_elapsed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/Stopwatch;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method
