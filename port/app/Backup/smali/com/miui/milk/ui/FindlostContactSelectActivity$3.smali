.class Lcom/miui/milk/ui/FindlostContactSelectActivity$3;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Lcom/miui/milk/control/callback/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I
    invoke-static {v0, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I

    .line 329
    const-string v0, "EXCEPTION"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 333
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 335
    :cond_1
    const-string v0, "SUCCESS"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
