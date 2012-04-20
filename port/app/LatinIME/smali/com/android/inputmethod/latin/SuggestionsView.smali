.class public Lcom/android/inputmethod/latin/SuggestionsView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;,
        Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;,
        Lcom/android/inputmethod/latin/SuggestionsView$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mDividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

.field private final mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

.field private final mMoreSuggestionsContainer:Landroid/view/View;

.field private final mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMoreSuggestionsModalTolerance:I

.field private mMoreSuggestionsMode:I

.field private final mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

.field private final mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

.field private final mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

.field private mOriginX:I

.field private mOriginY:I

.field private final mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

.field private final mSuggestionsStrip:Landroid/view/ViewGroup;

.field private final mWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 482
    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/SuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 483
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 486
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    .line 94
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 99
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    .line 708
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$2;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 725
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$3;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$3;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 784
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 794
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$4;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$4;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 488
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 489
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03000a

    invoke-virtual {v8, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 491
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 492
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 493
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 495
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    .line 499
    const/4 v10, 0x0

    .local v10, pos:I
    :goto_0
    const/16 v0, 0x12

    if-ge v10, v0, :cond_0

    .line 500
    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 501
    .local v12, word:Landroid/widget/TextView;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 506
    .local v7, divider:Landroid/view/View;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    const v0, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 512
    .end local v7           #divider:Landroid/view/View;
    .end local v12           #word:Landroid/widget/TextView;
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    .line 513
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 518
    new-instance v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 520
    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 521
    .local v9, moreWindow:Landroid/widget/PopupWindow;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {v9, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 523
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 525
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 526
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 527
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$1;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 533
    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 536
    .local v11, res:Landroid/content/res/Resources;
    const v0, 0x7f0a0016

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    .line 538
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    .line 540
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/latin/SuggestionsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/latin/SuggestionsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestionsView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    return-object v0
.end method

.method private addToDictionary(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "word"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b009e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, v1, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 706
    .end local v0           #message:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private dismissMoreSuggestions()Z
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 736
    const/4 v0, 0x1

    .line 738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "suggestions"
    .parameter "pos"

    .prologue
    .line 561
    sget-boolean v2, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SuggestedWords;->getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v1

    .line 563
    .local v1, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, debugInfo:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    .end local v0           #debugInfo:Ljava/lang/CharSequence;
    .end local v1           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const v5, 0x3f333333

    .line 594
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 611
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 595
    .restart local p0
    :cond_1
    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 596
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    .line 597
    .local v2, width:I
    if-le v2, p1, :cond_0

    .line 600
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 601
    .local v1, scaleX:F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_2

    .line 602
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    goto :goto_0

    .line 608
    :cond_2
    int-to-float v3, p1

    div-float/2addr v3, v5

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 610
    .local v0, ellipsized:Ljava/lang/CharSequence;
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    move-object p0, v0

    .line 611
    goto :goto_0
.end method

.method private static getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .locals 3
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const/high16 v1, 0x3f80

    .line 584
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 585
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    .line 586
    .local v0, width:I
    if-gt v0, p1, :cond_0

    .line 589
    :goto_0
    return v1

    :cond_0
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private static getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 630
    instance-of v0, p0, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    .line 631
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 641
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 633
    check-cast v0, Landroid/text/SpannableString;

    .line 634
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 635
    array-length v1, v0

    if-nez v1, :cond_1

    .line 636
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 638
    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 641
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 639
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 8
    .parameter "text"
    .parameter "paint"

    .prologue
    const/4 v4, 0x0

    .line 615
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 626
    :goto_0
    return v4

    .line 616
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 617
    .local v3, savedTypeface:Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 618
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 619
    .local v2, len:I
    new-array v5, v2, [F

    .line 620
    .local v5, widths:[F
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 621
    .local v0, count:I
    const/4 v4, 0x0

    .line 622
    .local v4, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 623
    aget v6, v5, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 625
    :cond_1
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 676
    return-void
.end method

.method private static setLayoutWeight(Landroid/view/View;FI)V
    .locals 3
    .parameter "v"
    .parameter "weight"
    .parameter "height"

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 575
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 576
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 577
    .local v0, llp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 578
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 579
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 581
    .end local v0           #llp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private showMoreSuggestions()Z
    .locals 15

    .prologue
    .line 751
    iget-object v13, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    .line 752
    .local v13, params:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;
    iget-boolean v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v14

    .line 754
    .local v14, stripWidth:I
    iget-object v11, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 755
    .local v11, container:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v14, v1

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v3, v1, v2

    .line 757
    .local v3, maxWidth:I
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 758
    .local v0, builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    iget v2, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    int-to-float v5, v3

    iget v6, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMinMoreSuggestionsWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    iget v5, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->layout(Lcom/android/inputmethod/latin/SuggestedWords;IIII)Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 761
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->build()Lcom/android/inputmethod/latin/MoreSuggestions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 762
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    .line 765
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 766
    .local v4, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    div-int/lit8 v7, v14, 0x2

    .line 767
    .local v7, pointX:I
    iget v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    neg-int v8, v1

    .line 768
    .local v8, pointY:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    iget-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-object v5, p0

    invoke-interface/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 771
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 772
    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastX:I

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginX:I

    .line 773
    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastY:I

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginY:I

    .line 774
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(Z)V

    .line 775
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    if-ge v12, v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 775
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 778
    :cond_0
    const/4 v1, 0x1

    .line 780
    .end local v0           #builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    .end local v3           #maxWidth:I
    .end local v4           #moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .end local v7           #pointX:I
    .end local v8           #pointY:I
    .end local v11           #container:Landroid/view/View;
    .end local v12           #i:I
    .end local v14           #stripWidth:I
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "view"
    .parameter "word"

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 679
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 683
    .local v4, previewText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I
    invoke-static {v5}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->access$700(Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 687
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 688
    .local v0, offsetInWindow:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 689
    aget v1, v0, v7

    .line 690
    .local v1, posX:I
    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 691
    .local v2, posY:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 692
    .local v3, previewPopup:Landroid/widget/PopupWindow;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 697
    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->postHidePreview()V

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {v3, p0, v7, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 669
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->removeAllViews()V

    .line 670
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->addView(Landroid/view/View;)V

    .line 671
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    .line 672
    return-void
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 658
    const/4 v0, 0x1

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "me"

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    if-nez v4, :cond_2

    .line 810
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastX:I

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastY:I

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
    const/4 v4, 0x1

    .line 846
    :goto_0
    return v4

    .line 815
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 818
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 819
    .local v6, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 820
    .local v8, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 821
    .local v11, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 822
    .local v15, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 823
    .local v14, id:I
    invoke-static {v14, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v1

    .line 824
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 825
    .local v16, x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v17, v0

    .line 826
    .local v17, y:I
    move/from16 v0, v16

    invoke-interface {v6, v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v2

    .line 827
    .local v2, translatedX:I
    move/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v3

    .line 829
    .local v3, translatedY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 830
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginX:I

    sub-int v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-ge v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginY:I

    sub-int v4, v4, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-lt v4, v5, :cond_5

    .line 834
    :cond_3
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 835
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 841
    :cond_4
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 837
    :cond_5
    const/4 v4, 0x1

    if-eq v8, v4, :cond_6

    const/4 v4, 0x6

    if-ne v8, v4, :cond_4

    .line 839
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    goto :goto_1

    :cond_7
    move-object v7, v1

    move v9, v2

    move v10, v3

    move-object v13, v6

    .line 845
    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 846
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 646
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v2, v2, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 851
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v3, v3, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/SuggestionsView;->addToDictionary(Ljava/lang/CharSequence;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 858
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 860
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 861
    .local v0, index:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 864
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 865
    .local v2, word:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    invoke-interface {v3, v0, v2}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 870
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 871
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelAllMessages()V

    .line 872
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V

    .line 873
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/inputmethod/latin/SuggestionsView$Listener;Landroid/view/View;)V
    .locals 1
    .parameter "listener"
    .parameter "inputView"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    .line 548
    const v0, 0x7f07003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 549
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 4
    .parameter "suggestions"

    .prologue
    .line 552
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 556
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 557
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->layout(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 652
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;I)V

    .line 653
    return-void
.end method
