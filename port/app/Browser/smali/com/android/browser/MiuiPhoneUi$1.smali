.class Lcom/android/browser/MiuiPhoneUi$1;
.super Ljava/lang/Object;
.source "MiuiPhoneUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiPhoneUi;->showNavScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiPhoneUi;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiPhoneUi;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/browser/MiuiPhoneUi$1;->this$0:Lcom/android/browser/MiuiPhoneUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi$1;->this$0:Lcom/android/browser/MiuiPhoneUi;

    #calls: Lcom/android/browser/MiuiPhoneUi;->finishAnimationIn()V
    invoke-static {v0}, Lcom/android/browser/MiuiPhoneUi;->access$000(Lcom/android/browser/MiuiPhoneUi;)V

    .line 472
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi$1;->this$0:Lcom/android/browser/MiuiPhoneUi;

    iget-object v0, v0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 473
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 467
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 464
    return-void
.end method
