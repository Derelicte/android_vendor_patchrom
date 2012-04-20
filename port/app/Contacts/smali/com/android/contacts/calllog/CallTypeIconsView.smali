.class public Lcom/android/contacts/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    .line 50
    return-void
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "callType"

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 87
    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .parameter "callType"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget v3, v3, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    .line 64
    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallTypeIconsView;->invalidate()V

    .line 66
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    .line 55
    iput v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallTypeIconsView;->invalidate()V

    .line 57
    return-void
.end method

.method public getCallType(I)I
    .locals 1
    .parameter "index"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, left:I
    iget-object v5, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    .local v0, callType:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/contacts/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 104
    .local v4, right:I
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v5, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mResources:Lcom/android/contacts/calllog/CallTypeIconsView$Resources;

    iget v5, v5, Lcom/android/contacts/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int v3, v4, v5

    .line 107
    goto :goto_0

    .line 108
    .end local v0           #callType:Ljava/lang/Integer;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #right:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/contacts/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method
