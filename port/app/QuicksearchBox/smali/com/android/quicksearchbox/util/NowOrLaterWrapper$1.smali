.class Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;

.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/util/NowOrLaterWrapper;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper.1;"
    iput-object p1, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;->this$0:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;

    iput-object p2, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper.1;"
    .local p1, value:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;->this$0:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;

    invoke-virtual {v1, p1}, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
