.class Lcom/android/browser/reading/ReadingModePageDataProvider$1;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$1;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$1;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/reading/ReadingModePageDataProvider;->executeQuery()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$000(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
