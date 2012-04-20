.class Lcom/android/browser/MiuiNavScreen$2;
.super Ljava/lang/Object;
.source "MiuiNavScreen.java"

# interfaces
.implements Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavScreen;->closeLastTabAndOpenHomePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiNavScreen;

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tix:I


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavScreen;ILcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/browser/MiuiNavScreen$2;->this$0:Lcom/android/browser/MiuiNavScreen;

    iput p2, p0, Lcom/android/browser/MiuiNavScreen$2;->val$tix:I

    iput-object p3, p0, Lcom/android/browser/MiuiNavScreen$2;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$2;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;
    invoke-static {v0}, Lcom/android/browser/MiuiNavScreen;->access$200(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiPhoneUi;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/MiuiNavScreen$2;->val$tix:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/MiuiPhoneUi;->hideNavScreen(IZ)V

    .line 138
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$2;->this$0:Lcom/android/browser/MiuiNavScreen;

    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen$2;->val$tab:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/MiuiNavScreen;->switchToTab(Lcom/android/browser/Tab;)V
    invoke-static {v0, v1}, Lcom/android/browser/MiuiNavScreen;->access$300(Lcom/android/browser/MiuiNavScreen;Lcom/android/browser/Tab;)V

    .line 139
    return-void
.end method
