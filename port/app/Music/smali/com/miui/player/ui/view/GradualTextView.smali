.class public Lcom/miui/player/ui/view/GradualTextView;
.super Landroid/widget/TextView;
.source "GradualTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndColor:I

.field private mStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/miui/player/ui/view/GradualTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/view/GradualTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/miui/player/ui/view/GradualTextView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/miui/player/ui/view/GradualTextView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/view/GradualTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    return-void
.end method

.method private updateShader()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/miui/player/ui/view/GradualTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/miui/player/ui/view/GradualTextView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    const/4 v2, 0x2

    new-array v5, v2, [I

    const/4 v2, 0x0

    iget v4, p0, Lcom/miui/player/ui/view/GradualTextView;->mStartColor:I

    aput v4, v5, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/miui/player/ui/view/GradualTextView;->mEndColor:I

    aput v4, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    invoke-virtual {p0}, Lcom/miui/player/ui/view/GradualTextView;->invalidate()V

    .line 58
    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 45
    invoke-direct {p0}, Lcom/miui/player/ui/view/GradualTextView;->updateShader()V

    .line 46
    return-void
.end method

.method public setGradualColor(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/player/ui/view/GradualTextView;->mStartColor:I

    .line 38
    iput p2, p0, Lcom/miui/player/ui/view/GradualTextView;->mEndColor:I

    .line 39
    invoke-direct {p0}, Lcom/miui/player/ui/view/GradualTextView;->updateShader()V

    .line 40
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 2
    .parameter "singleLine"

    .prologue
    .line 51
    sget-object v0, Lcom/miui/player/ui/view/GradualTextView;->TAG:Ljava/lang/String;

    const-string v1, "non-support set single line"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
