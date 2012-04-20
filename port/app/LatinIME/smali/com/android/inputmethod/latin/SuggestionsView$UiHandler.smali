.class Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/SuggestionsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 131
    return-void
.end method

.method public cancelHidePreview()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->removeMessages(I)V

    .line 127
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestionsView;

    .line 113
    .local v0, suggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 115
    :pswitch_0
    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$000(Lcom/android/inputmethod/latin/SuggestionsView;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public postHidePreview()V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x514

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    return-void
.end method
