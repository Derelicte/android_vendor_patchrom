.class Lcom/android/browser/MiuiNavScreen$TabAdapter$1;
.super Ljava/lang/Object;
.source "MiuiNavScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavScreen$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

.field final synthetic val$position:I

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tabview:Lcom/android/browser/NavTabView;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavScreen$TabAdapter;Lcom/android/browser/NavTabView;Lcom/android/browser/Tab;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iput-object p2, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    iput-object p3, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    iput p4, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isClose(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;
    invoke-static {v0}, Lcom/android/browser/MiuiNavScreen;->access$600(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiNavTabScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isTitle(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/MiuiNavScreen;->switchToTab(Lcom/android/browser/Tab;)V
    invoke-static {v0, v1}, Lcom/android/browser/MiuiNavScreen;->access$300(Lcom/android/browser/MiuiNavScreen;Lcom/android/browser/Tab;)V

    .line 201
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;
    invoke-static {v0}, Lcom/android/browser/MiuiNavScreen;->access$200(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiPhoneUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/MiuiPhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    iget v1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/MiuiNavScreen;->close(IZ)V

    .line 203
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;
    invoke-static {v0}, Lcom/android/browser/MiuiNavScreen;->access$200(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiPhoneUi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/browser/MiuiPhoneUi;->editUrl(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;
    invoke-static {v0}, Lcom/android/browser/MiuiNavScreen;->access$200(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiPhoneUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/MiuiPhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->this$1:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    iget v1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavScreen;->close(I)V

    goto :goto_0
.end method
