.class public Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;
.super Ljava/lang/Object;
.source "OnlineLoadingStatusBarController.java"


# instance fields
.field private mLoadingFailedId:I

.field private mLoadingInProcessId:I

.field private final mStatusBar:Landroid/view/View;

.field private final mStatusHintTextView:Landroid/widget/TextView;

.field private final mStatusProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "a"
    .parameter "id"
    .parameter "onRetryClickListener"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public setLoadFailed()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingFailedId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-void
.end method

.method public setLoadInProcess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingInProcessId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method

.method public setLoadSuccess()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public setLoadingHintTextId(II)V
    .locals 0
    .parameter "loadingInProcessId"
    .parameter "loadingFailedId"

    .prologue
    .line 27
    iput p1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingInProcessId:I

    .line 28
    iput p2, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingFailedId:I

    .line 29
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
