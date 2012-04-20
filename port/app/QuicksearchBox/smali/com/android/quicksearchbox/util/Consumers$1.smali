.class final Lcom/android/quicksearchbox/util/Consumers$1;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/Consumers;->consumeAsync(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/quicksearchbox/util/Consumers$1;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    iput-object p2, p0, Lcom/android/quicksearchbox/util/Consumers$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/quicksearchbox/util/Consumers$1;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/Consumers$1;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
