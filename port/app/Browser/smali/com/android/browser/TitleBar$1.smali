.class Lcom/android/browser/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCanceled:Z

.field final synthetic this$0:Lcom/android/browser/TitleBar;


# direct methods
.method constructor <init>(Lcom/android/browser/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/browser/TitleBar$1;->this$0:Lcom/android/browser/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TitleBar$1;->mWasCanceled:Z

    .line 221
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/browser/TitleBar$1;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/browser/TitleBar$1;->this$0:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setTranslationY(F)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar$1;->this$0:Lcom/android/browser/TitleBar;

    iget-object v0, v0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    .line 216
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 208
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/TitleBar$1;->mWasCanceled:Z

    .line 204
    return-void
.end method
