.class final Lcom/android/systemui/recent/AnimateMemoryBar$2;
.super Landroid/util/IntProperty;
.source "AnimateMemoryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/AnimateMemoryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Lcom/android/systemui/recent/AnimateMemoryBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recent/AnimateMemoryBar;)Ljava/lang/Integer;
    .locals 1
    .parameter "object"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/recent/AnimateMemoryBar;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/android/systemui/recent/AnimateMemoryBar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/AnimateMemoryBar$2;->get(Lcom/android/systemui/recent/AnimateMemoryBar;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/recent/AnimateMemoryBar;I)V
    .locals 0
    .parameter "object"
    .parameter "value"

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Lcom/android/systemui/recent/AnimateMemoryBar;->setValue(I)V

    .line 41
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p1, Lcom/android/systemui/recent/AnimateMemoryBar;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/AnimateMemoryBar$2;->setValue(Lcom/android/systemui/recent/AnimateMemoryBar;I)V

    return-void
.end method
