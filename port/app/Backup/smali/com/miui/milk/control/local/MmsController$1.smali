.class Lcom/miui/milk/control/local/MmsController$1;
.super Ljava/lang/Object;
.source "MmsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/control/local/MmsController;->importData(Ljava/io/File;)V
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
        "Lcom/miui/milk/model/MmsProtos$Pdu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/control/local/MmsController;


# direct methods
.method constructor <init>(Lcom/miui/milk/control/local/MmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/milk/control/local/MmsController$1;->this$0:Lcom/miui/milk/control/local/MmsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/milk/model/MmsProtos$Pdu;Lcom/miui/milk/model/MmsProtos$Pdu;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 110
    const-string v2, ","

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, lstr:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {p2}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, rstr:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    check-cast p1, Lcom/miui/milk/model/MmsProtos$Pdu;

    .end local p1
    check-cast p2, Lcom/miui/milk/model/MmsProtos$Pdu;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/control/local/MmsController$1;->compare(Lcom/miui/milk/model/MmsProtos$Pdu;Lcom/miui/milk/model/MmsProtos$Pdu;)I

    move-result v0

    return v0
.end method
