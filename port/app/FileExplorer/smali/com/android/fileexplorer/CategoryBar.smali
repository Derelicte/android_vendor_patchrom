.class public Lcom/android/fileexplorer/CategoryBar;
.super Landroid/view/View;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/CategoryBar$Category;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/CategoryBar$Category;",
            ">;"
        }
    .end annotation
.end field

.field private mFullValue:J

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/CategoryBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/CategoryBar;->stepAnimation()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/fileexplorer/CategoryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private stepAnimation()V
    .locals 7

    .prologue
    .line 108
    iget-object v3, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    if-nez v3, :cond_0

    .line 128
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 112
    .local v1, finished:I
    iget-object v3, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/CategoryBar$Category;

    .line 113
    .local v0, c:Lcom/android/fileexplorer/CategoryBar$Category;
    iget-wide v3, v0, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    iget-wide v5, v0, Lcom/android/fileexplorer/CategoryBar$Category;->aniStep:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    .line 114
    iget-wide v3, v0, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    iget-wide v5, v0, Lcom/android/fileexplorer/CategoryBar$Category;->value:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 115
    iget-wide v3, v0, Lcom/android/fileexplorer/CategoryBar$Category;->value:J

    iput-wide v3, v0, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    iget-object v3, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 120
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    .line 121
    const-string v3, "CategoryBar"

    const-string v4, "Animation stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0           #c:Lcom/android/fileexplorer/CategoryBar$Category;
    :cond_2
    invoke-virtual {p0}, Lcom/android/fileexplorer/CategoryBar;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addCategory(I)V
    .locals 2
    .parameter "categoryImg"

    .prologue
    .line 59
    new-instance v0, Lcom/android/fileexplorer/CategoryBar$Category;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/CategoryBar$Category;-><init>(Lcom/android/fileexplorer/CategoryBar;Lcom/android/fileexplorer/CategoryBar$1;)V

    .line 60
    .local v0, ca:Lcom/android/fileexplorer/CategoryBar$Category;
    iput p1, v0, Lcom/android/fileexplorer/CategoryBar$Category;->resImg:I

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/fileexplorer/CategoryBar;->getWidth()I

    move-result v9

    add-int/lit8 v8, v9, -0x18

    .line 75
    .local v8, width:I
    const v9, 0x7f02000c

    invoke-direct {p0, v9}, Lcom/android/fileexplorer/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 77
    .local v2, d:Landroid/graphics/drawable/Drawable;
    const/16 v4, 0xc

    .line 78
    .local v4, left:I
    new-instance v0, Landroid/graphics/Rect;

    add-int v9, v4, v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-direct {v0, v4, v13, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    iget-wide v9, p0, Lcom/android/fileexplorer/CategoryBar;->mFullValue:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 82
    iget-object v9, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/CategoryBar$Category;

    .line 83
    .local v1, c:Lcom/android/fileexplorer/CategoryBar$Category;
    iget-object v9, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    if-nez v9, :cond_1

    iget-wide v5, v1, Lcom/android/fileexplorer/CategoryBar$Category;->value:J

    .line 84
    .local v5, value:J
    :goto_1
    int-to-long v9, v8

    mul-long/2addr v9, v5

    iget-wide v11, p0, Lcom/android/fileexplorer/CategoryBar;->mFullValue:J

    div-long/2addr v9, v11

    long-to-int v7, v9

    .line 85
    .local v7, w:I
    if-eqz v7, :cond_0

    .line 87
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 88
    add-int v9, v4, v7

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 89
    iget v9, v1, Lcom/android/fileexplorer/CategoryBar$Category;->resImg:I

    invoke-direct {p0, v9}, Lcom/android/fileexplorer/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 92
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    add-int/2addr v4, v7

    .line 94
    goto :goto_0

    .line 83
    .end local v5           #value:J
    .end local v7           #w:I
    :cond_1
    iget-wide v5, v1, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    goto :goto_1

    .line 96
    .end local v1           #c:Lcom/android/fileexplorer/CategoryBar$Category;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 97
    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/CategoryBar;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 98
    const v9, 0x7f02000d

    invoke-direct {p0, v9}, Lcom/android/fileexplorer/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-void
.end method

.method public setCategoryValue(IJ)Z
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/CategoryBar$Category;

    iput-wide p2, v0, Lcom/android/fileexplorer/CategoryBar$Category;->value:J

    .line 68
    invoke-virtual {p0}, Lcom/android/fileexplorer/CategoryBar;->invalidate()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFullValue(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/fileexplorer/CategoryBar;->mFullValue:J

    .line 44
    return-void
.end method

.method public declared-synchronized startAnimation()V
    .locals 8

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    const-string v0, "CategoryBar"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/CategoryBar$Category;

    .line 138
    .local v6, c:Lcom/android/fileexplorer/CategoryBar$Category;
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/android/fileexplorer/CategoryBar$Category;->tmpValue:J

    .line 139
    iget-wide v0, v6, Lcom/android/fileexplorer/CategoryBar$Category;->value:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iput-wide v0, v6, Lcom/android/fileexplorer/CategoryBar$Category;->aniStep:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    .end local v6           #c:Lcom/android/fileexplorer/CategoryBar$Category;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    .line 143
    iget-object v0, p0, Lcom/android/fileexplorer/CategoryBar;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/fileexplorer/CategoryBar$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/CategoryBar$1;-><init>(Lcom/android/fileexplorer/CategoryBar;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
