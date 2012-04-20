.class Lcom/android/inputmethod/latin/MoreSuggestionsView$2;
.super Ljava/lang/Object;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    return-object v0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$100(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$200(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$300()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    return-object v0
.end method
