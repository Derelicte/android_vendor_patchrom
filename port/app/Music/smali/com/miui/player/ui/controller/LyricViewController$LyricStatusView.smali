.class Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;
.super Ljava/lang/Object;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricStatusView"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/View;

.field private final mNoLyricIndicator:Landroid/view/View;

.field private final mStatusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mContainer:Landroid/view/View;

    .line 308
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mStatusText:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mNoLyricIndicator:Landroid/view/View;

    .line 310
    return-void
.end method


# virtual methods
.method public setIndicatorVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 318
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 319
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mNoLyricIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void

    .line 318
    .end local v0           #visibility:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 314
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    return-void

    .line 313
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
