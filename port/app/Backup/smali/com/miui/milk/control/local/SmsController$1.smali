.class Lcom/miui/milk/control/local/SmsController$1;
.super Ljava/lang/Object;
.source "SmsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/control/local/SmsController;->importData(Ljava/io/File;)V
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
        "Lcom/miui/milk/model/SmsProtos$Sms;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/control/local/SmsController;


# direct methods
.method constructor <init>(Lcom/miui/milk/control/local/SmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/milk/control/local/SmsController$1;->this$0:Lcom/miui/milk/control/local/SmsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/SmsProtos$Sms;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    check-cast p1, Lcom/miui/milk/model/SmsProtos$Sms;

    .end local p1
    check-cast p2, Lcom/miui/milk/model/SmsProtos$Sms;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/control/local/SmsController$1;->compare(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/SmsProtos$Sms;)I

    move-result v0

    return v0
.end method
