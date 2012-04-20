.class Lcom/android/monitor/NetworkMonitor$NameComparator;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/monitor/net/UidInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$NameComparator;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$NameComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/monitor/net/UidInfo;Lcom/android/monitor/net/UidInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$NameComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/monitor/net/UidInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/monitor/net/UidInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    check-cast p1, Lcom/android/monitor/net/UidInfo;

    .end local p1
    check-cast p2, Lcom/android/monitor/net/UidInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$NameComparator;->compare(Lcom/android/monitor/net/UidInfo;Lcom/android/monitor/net/UidInfo;)I

    move-result v0

    return v0
.end method
