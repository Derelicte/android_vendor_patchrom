.class public Lcom/android/browser/MiuiNavTabScroller;
.super Lcom/android/browser/view/ScrollerView;
.source "MiuiNavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiNavTabScroller$ContentLayout;,
        Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;,
        Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;
    }
.end annotation


# static fields
.field static final PULL_FACTOR:[F


# instance fields
.field private height:I

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

.field mCubic:Landroid/view/animation/DecelerateInterpolator;

.field private mFlingVelocity:F

.field private mGap:I

.field private mGapAnimator:Landroid/animation/ObjectAnimator;

.field private mGapPosition:I

.field private mLayoutListener:Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;

.field private mNeedsScroll:Z

.field mPullValue:I

.field private mRemoveListener:Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;

.field private mScrollPosition:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/MiuiNavTabScroller;->PULL_FACTOR:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavTabScroller;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavTabScroller;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavTabScroller;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/MiuiNavTabScroller;)Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mRemoveListener:Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/MiuiNavTabScroller;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/MiuiNavTabScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/MiuiNavTabScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/browser/MiuiNavTabScroller;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavTabScroller;->getPadding(I)I

    move-result v0

    return v0
.end method

.method private adjustViewGap(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    if-ge p2, v0, :cond_2

    .line 392
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_3

    .line 393
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 398
    :cond_2
    :goto_0
    return-void

    .line 395
    :cond_3
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private animateOut(Landroid/view/View;F)V
    .locals 2
    .parameter "v"
    .parameter "velocity"

    .prologue
    .line 277
    iget-boolean v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 278
    .local v0, start:F
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;FF)V

    .line 279
    return-void

    .line 277
    .end local v0           #start:F
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method private animateOut(Landroid/view/View;FF)V
    .locals 26
    .parameter "v"
    .parameter "velocity"
    .parameter "start"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->indexOfChild(Landroid/view/View;)I

    move-result v13

    .line 284
    .local v13, position:I
    const/16 v18, 0x0

    .line 285
    .local v18, target:I
    const/16 v22, 0x0

    cmpg-float v22, p2, v22

    if-gez v22, :cond_7

    .line 286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getHeight()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v18, v0

    .line 290
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    :goto_2
    sub-int v6, v18, v22

    .line 291
    .local v6, distance:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-long v7, v0

    .line 292
    .local v7, duration:J
    const/4 v14, 0x0

    .line 293
    .local v14, scroll:I
    const/16 v21, 0x0

    .line 294
    .local v21, translate:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 295
    .local v10, gap:I
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/MiuiNavTabScroller;->getViewCenter(Landroid/view/View;)I

    move-result v5

    .line 296
    .local v5, centerView:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getScreenCenter()I

    move-result v4

    .line 297
    .local v4, centerScreen:I
    const/4 v11, -0x1

    .line 298
    .local v11, newpos:I
    div-int/lit8 v22, v10, 0x2

    sub-int v22, v4, v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_c

    .line 300
    sub-int v22, v4, v5

    sub-int v22, v22, v10

    move/from16 v0, v22

    neg-int v14, v0

    .line 301
    if-lez v13, :cond_b

    move/from16 v21, v10

    .line 302
    :goto_4
    move v11, v13

    .line 318
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    .line 319
    move v12, v11

    .line 320
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    sget-object v22, Lcom/android/browser/MiuiNavTabScroller;->TRANSLATION_Y:Landroid/util/Property;

    :goto_6
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput p3, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 322
    .local v19, trans:Landroid/animation/ObjectAnimator;
    sget-object v22, Lcom/android/browser/MiuiNavTabScroller;->ALPHA:Landroid/util/Property;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/browser/MiuiNavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/browser/MiuiNavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v25

    aput v25, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 324
    .local v3, alpha:Landroid/animation/ObjectAnimator;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 325
    .local v16, set1:Landroid/animation/AnimatorSet;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    const/16 v23, 0x1

    aput-object v3, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 326
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 327
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    .line 328
    const/16 v20, 0x0

    .line 329
    .local v20, trans2:Landroid/animation/ObjectAnimator;
    const/4 v15, 0x0

    .line 330
    .local v15, scroll1:Landroid/animation/ObjectAnimator;
    if-eqz v14, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 332
    const-string v22, "scrollX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollX()I

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollX()I

    move-result v25

    add-int v25, v25, v14

    aput v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 337
    :cond_3
    :goto_7
    if-eqz v21, :cond_4

    .line 338
    const-string v22, "gap"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    const/16 v24, 0x1

    aput v21, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 340
    :cond_4
    const/16 v9, 0xc8

    .line 341
    .local v9, duration2:I
    if-eqz v15, :cond_12

    .line 342
    if-eqz v20, :cond_11

    .line 343
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    .local v17, set2:Landroid/animation/AnimatorSet;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    aput-object v20, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 345
    const-wide/16 v22, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v17, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 357
    .end local v17           #set2:Landroid/animation/AnimatorSet;
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/browser/MiuiNavTabScroller$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12}, Lcom/android/browser/MiuiNavTabScroller$2;-><init>(Lcom/android/browser/MiuiNavTabScroller;II)V

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 286
    .end local v3           #alpha:Landroid/animation/ObjectAnimator;
    .end local v4           #centerScreen:I
    .end local v5           #centerView:I
    .end local v6           #distance:I
    .end local v7           #duration:J
    .end local v9           #duration2:I
    .end local v10           #gap:I
    .end local v11           #newpos:I
    .end local v12           #pos:I
    .end local v14           #scroll:I
    .end local v15           #scroll1:Landroid/animation/ObjectAnimator;
    .end local v16           #set1:Landroid/animation/AnimatorSet;
    .end local v19           #trans:Landroid/animation/ObjectAnimator;
    .end local v20           #trans2:Landroid/animation/ObjectAnimator;
    .end local v21           #translate:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getWidth()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .line 288
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getHeight()I

    move-result v18

    :goto_9
    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getWidth()I

    move-result v18

    goto :goto_9

    .line 290
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    goto/16 :goto_2

    .line 294
    .restart local v6       #distance:I
    .restart local v7       #duration:J
    .restart local v14       #scroll:I
    .restart local v21       #translate:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    goto/16 :goto_3

    .line 301
    .restart local v4       #centerScreen:I
    .restart local v5       #centerView:I
    .restart local v10       #gap:I
    .restart local v11       #newpos:I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 303
    :cond_c
    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v4

    move/from16 v0, v22

    if-le v5, v0, :cond_d

    .line 305
    add-int v22, v4, v10

    sub-int v22, v22, v5

    move/from16 v0, v22

    neg-int v14, v0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    .line 307
    neg-int v0, v10

    move/from16 v21, v0

    goto/16 :goto_5

    .line 311
    :cond_d
    sub-int v22, v4, v5

    move/from16 v0, v22

    neg-int v14, v0

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_e

    .line 313
    neg-int v0, v10

    move/from16 v21, v0

    goto/16 :goto_5

    .line 315
    :cond_e
    sub-int/2addr v14, v10

    goto/16 :goto_5

    .line 320
    .restart local v12       #pos:I
    :cond_f
    sget-object v22, Lcom/android/browser/MiuiNavTabScroller;->TRANSLATION_X:Landroid/util/Property;

    goto/16 :goto_6

    .line 334
    .restart local v3       #alpha:Landroid/animation/ObjectAnimator;
    .restart local v15       #scroll1:Landroid/animation/ObjectAnimator;
    .restart local v16       #set1:Landroid/animation/AnimatorSet;
    .restart local v19       #trans:Landroid/animation/ObjectAnimator;
    .restart local v20       #trans2:Landroid/animation/ObjectAnimator;
    :cond_10
    const-string v22, "scrollY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollY()I

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollY()I

    move-result v25

    add-int v25, v25, v14

    aput v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    goto/16 :goto_7

    .line 348
    .restart local v9       #duration2:I
    :cond_11
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_8

    .line 352
    :cond_12
    if-eqz v20, :cond_5

    .line 353
    const-wide/16 v22, 0xc8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v20, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_8
.end method

.method private calcPadding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v2, v3}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, v:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/browser/MiuiNavTabScroller;->getPadding(I)I

    move-result v0

    .line 152
    .local v0, pad:I
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v2, v0, v3, v0, v3}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setPadding(IIII)V

    .line 158
    .end local v0           #pad:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/browser/MiuiNavTabScroller;->getPadding(I)I

    move-result v0

    .line 155
    .restart local v0       #pad:I
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v2, v3, v0, v3, v0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F
    .locals 1
    .parameter "inter"
    .parameter "value"
    .parameter "start"
    .parameter "dist"
    .parameter "duration"

    .prologue
    .line 489
    div-float v0, p2, p5

    invoke-virtual {p1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p4

    add-float/2addr v0, p3

    return v0
.end method

.method private getAlpha(Landroid/view/View;F)F
    .locals 3
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 484
    const/high16 v1, 0x3f80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float v0, v2, v0

    sub-float v0, v1, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getPadding(I)I
    .locals 1
    .parameter "chidWidht"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->width:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 143
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->height:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getScreenCenter()I
    .locals 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 412
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 404
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 93
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    .line 94
    iput v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/browser/MiuiNavTabScroller;->setHorizontalScrollBarEnabled(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/android/browser/MiuiNavTabScroller;->setVerticalScrollBarEnabled(Z)V

    .line 97
    new-instance v1, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-direct {v1, p1, p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;-><init>(Landroid/content/Context;Lcom/android/browser/MiuiNavTabScroller;)V

    iput-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    .line 98
    iget-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v1, v4}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setOrientation(I)V

    .line 99
    iget-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavTabScroller;->addView(Landroid/view/View;)V

    .line 100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v1, v0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v1, v5}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setGravity(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getGap()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavTabScroller;->setGap(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44bb8000

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mFlingVelocity:F

    .line 109
    return-void
.end method

.method private offsetView(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MiuiNavTabScroller;->getAlpha(Landroid/view/View;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 476
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method


# virtual methods
.method adjustGap()V
    .locals 3

    .prologue
    .line 383
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v2}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v2, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->adjustViewGap(Landroid/view/View;I)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected animateOut(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mFlingVelocity:F

    neg-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 418
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->adjustGap()V

    .line 421
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/view/ScrollerView;->draw(Landroid/graphics/Canvas;)V

    .line 422
    return-void
.end method

.method protected findViewAt(II)Landroid/view/View;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 426
    iget v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollX:I

    add-int/2addr p1, v3

    .line 427
    iget v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollY:I

    add-int/2addr p2, v3

    .line 428
    iget-object v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v3}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    .line 429
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v3, v2}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 438
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    .line 429
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 438
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    return v0
.end method

.method protected getScrollValue()I
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollX:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollY:I

    goto :goto_0
.end method

.method protected getTabView(I)Lcom/android/browser/NavTabView;
    .locals 1
    .parameter "pos"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v0, p1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/NavTabView;

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged(I)V

    .line 201
    return-void
.end method

.method handleDataChanged(I)V
    .locals 10
    .parameter "newscroll"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 204
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getScrollValue()I

    move-result v2

    .line 205
    .local v2, scroll:I
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v4}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->removeAllViews()V

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 210
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v4, v0, v6, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 211
    .local v3, v:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    :goto_1
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 214
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v4, v3, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    if-le v4, v9, :cond_1

    .line 216
    invoke-direct {p0, v3, v0}, Lcom/android/browser/MiuiNavTabScroller;->adjustViewGap(Landroid/view/View;I)V

    .line 209
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 213
    goto :goto_1

    .line 219
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #v:Landroid/view/View;
    :cond_3
    if-le p1, v9, :cond_4

    .line 220
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 221
    iput-boolean v5, p0, Lcom/android/browser/MiuiNavTabScroller;->mNeedsScroll:Z

    .line 222
    iput p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollPosition:I

    .line 223
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->requestLayout()V

    .line 227
    :goto_2
    return-void

    .line 225
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/browser/MiuiNavTabScroller;->setScrollValue(I)V

    goto :goto_2
.end method

.method protected isHorizontal()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-super/range {p0 .. p5}, Lcom/android/browser/view/ScrollerView;->onLayout(ZIIII)V

    .line 236
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mNeedsScroll:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 238
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/MiuiNavTabScroller;->snapToSelected(IZ)V

    .line 239
    iput-boolean v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mNeedsScroll:Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mLayoutListener:Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mLayoutListener:Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;->onLayout(IIII)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mLayoutListener:Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;

    .line 245
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "wspec"
    .parameter "hspec"

    .prologue
    const v1, 0xffffff

    .line 132
    and-int v0, p1, v1

    iput v0, p0, Lcom/android/browser/MiuiNavTabScroller;->width:I

    .line 133
    and-int v0, p2, v1

    iput v0, p0, Lcom/android/browser/MiuiNavTabScroller;->height:I

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/browser/view/ScrollerView;->onMeasure(II)V

    .line 136
    invoke-direct {p0}, Lcom/android/browser/MiuiNavTabScroller;->calcPadding()V

    .line 137
    return-void
.end method

.method protected onOrthoDrag(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MiuiNavTabScroller;->offsetView(Landroid/view/View;F)V

    .line 446
    :cond_0
    return-void
.end method

.method protected onOrthoDragFinished(Landroid/view/View;)V
    .locals 3
    .parameter "downView"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mIsOrthoDragged:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 453
    iget-boolean v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 454
    .local v0, diff:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-boolean v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_2
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    .line 456
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mFlingVelocity:F

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;FF)V

    goto :goto_0

    .line 453
    .end local v0           #diff:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_1

    .line 454
    .restart local v0       #diff:F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_2

    .line 459
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/browser/MiuiNavTabScroller;->offsetView(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected onOrthoFling(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "velocity"

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/browser/MiuiNavTabScroller;->mFlingVelocity:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;F)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/MiuiNavTabScroller;->offsetView(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected onPull(I)V
    .locals 20
    .parameter "delta"

    .prologue
    .line 494
    const/4 v13, 0x0

    .line 495
    .local v13, layer:Z
    const/4 v8, 0x2

    .line 496
    .local v8, count:I
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-nez v1, :cond_1

    .line 548
    :cond_0
    return-void

    .line 497
    :cond_1
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-eqz v1, :cond_a

    .line 499
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-gez v1, :cond_4

    move v1, v11

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 503
    .local v7, child:Landroid/view/View;
    if-nez v7, :cond_5

    .line 517
    .end local v7           #child:Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    .line 524
    .end local v11           #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getWidth()I

    move-result v10

    .line 525
    .local v10, height:I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 526
    .local v14, oscroll:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-gtz v1, :cond_d

    const/4 v9, 0x1

    .line 527
    .local v9, factor:I
    :goto_4
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v8, :cond_0

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-gez v1, :cond_e

    move v1, v11

    :goto_6
    invoke-virtual {v2, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 531
    .restart local v7       #child:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 532
    if-eqz v13, :cond_3

    .line 534
    :cond_3
    sget-object v1, Lcom/android/browser/MiuiNavTabScroller;->PULL_FACTOR:[F

    aget v12, v1, v11

    .line 535
    .local v12, k:F
    neg-int v1, v9

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v14

    const/4 v4, 0x0

    const/high16 v1, 0x4000

    mul-float v5, v12, v1

    int-to-float v6, v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/browser/MiuiNavTabScroller;->ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F

    move-result v1

    mul-float v15, v19, v1

    .line 536
    .local v15, rot:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mCubic:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v14

    const/4 v4, 0x0

    const/high16 v1, 0x41a0

    mul-float v5, v12, v1

    int-to-float v6, v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/browser/MiuiNavTabScroller;->ease(Landroid/view/animation/DecelerateInterpolator;FFFF)F

    move-result v1

    float-to-int v1, v1

    mul-int v18, v9, v1

    .line 537
    .local v18, y:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_f

    .line 538
    move/from16 v0, v18

    int-to-float v1, v0

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 542
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_10

    .line 543
    neg-float v1, v15

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotationY(F)V

    .line 527
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 500
    .end local v7           #child:Landroid/view/View;
    .end local v9           #factor:I
    .end local v10           #height:I
    .end local v12           #k:F
    .end local v14           #oscroll:I
    .end local v15           #rot:F
    .end local v18           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v11

    goto/16 :goto_1

    .line 504
    .restart local v7       #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_6

    const-string v1, "translationX"

    :goto_9
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getTranslationX()F

    move-result v2

    :goto_a
    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 508
    .local v17, trans:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v1, :cond_8

    const-string v1, "rotationY"

    :goto_b
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getRotationY()F

    move-result v2

    :goto_c
    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 512
    .local v15, rot:Landroid/animation/ObjectAnimator;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 513
    .local v16, set:Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v17, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 514
    const-wide/16 v1, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 515
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 499
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 504
    .end local v15           #rot:Landroid/animation/ObjectAnimator;
    .end local v16           #set:Landroid/animation/AnimatorSet;
    .end local v17           #trans:Landroid/animation/ObjectAnimator;
    :cond_6
    const-string v1, "translationY"

    goto :goto_9

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getTranslationY()F

    move-result v2

    goto :goto_a

    .line 508
    .restart local v17       #trans:Landroid/animation/ObjectAnimator;
    :cond_8
    const-string v1, "rotationX"

    goto :goto_b

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getRotationX()F

    move-result v2

    goto :goto_c

    .line 519
    .end local v7           #child:Landroid/view/View;
    .end local v11           #i:I
    .end local v17           #trans:Landroid/animation/ObjectAnimator;
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    if-nez v1, :cond_b

    .line 520
    const/4 v13, 0x1

    .line 522
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mPullValue:I

    goto/16 :goto_2

    .line 524
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiNavTabScroller;->getHeight()I

    move-result v10

    goto/16 :goto_3

    .line 526
    .restart local v10       #height:I
    .restart local v14       #oscroll:I
    :cond_d
    const/4 v9, -0x1

    goto/16 :goto_4

    .line 528
    .restart local v9       #factor:I
    .restart local v11       #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v11

    goto/16 :goto_6

    .line 540
    .restart local v7       #child:Landroid/view/View;
    .restart local v12       #k:F
    .local v15, rot:F
    .restart local v18       #y:I
    :cond_f
    move/from16 v0, v18

    int-to-float v1, v0

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_7

    .line 545
    :cond_10
    invoke-virtual {v7, v15}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_8
.end method

.method protected setAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "selection"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    .line 175
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    new-instance v1, Lcom/android/browser/MiuiNavTabScroller$1;

    invoke-direct {v1, p0}, Lcom/android/browser/MiuiNavTabScroller$1;-><init>(Lcom/android/browser/MiuiNavTabScroller;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 188
    invoke-virtual {p0, p2}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged(I)V

    .line 189
    return-void
.end method

.method public setGap(I)V
    .locals 2
    .parameter "gap"

    .prologue
    .line 372
    iget v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 373
    iput p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mGap:I

    .line 374
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->postInvalidate()V

    .line 376
    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mLayoutListener:Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;

    .line 171
    return-void
.end method

.method public setOnRemoveListener(Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller;->mRemoveListener:Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;

    .line 167
    return-void
.end method

.method protected setScrollValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v0, :cond_0

    move v0, p1

    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->scrollTo(II)V

    .line 117
    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1
.end method

.method snapToSelected(IZ)V
    .locals 5
    .parameter "pos"
    .parameter "smooth"

    .prologue
    .line 252
    if-gez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mContentView:Lcom/android/browser/MiuiNavTabScroller$ContentLayout;

    invoke-virtual {v3, p1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, sx:I
    const/4 v1, 0x0

    .line 257
    .local v1, sy:I
    iget-boolean v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mHorizontal:Z

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 262
    :goto_1
    iget v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollX:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/android/browser/MiuiNavTabScroller;->mScrollY:I

    if-eq v1, v3, :cond_0

    .line 263
    :cond_2
    if-eqz p2, :cond_4

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->smoothScrollTo(II)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->scrollTo(II)V

    goto :goto_0
.end method
