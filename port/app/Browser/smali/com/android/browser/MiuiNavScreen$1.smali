.class Lcom/android/browser/MiuiNavScreen$1;
.super Ljava/lang/Object;
.source "MiuiNavScreen.java"

# interfaces
.implements Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiNavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/browser/MiuiNavScreen$1;->this$0:Lcom/android/browser/MiuiNavScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen$1;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;
    invoke-static {v1}, Lcom/android/browser/MiuiNavScreen;->access$000(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiNavScreen$TabAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/MiuiNavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 91
    .local v0, tab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen$1;->this$0:Lcom/android/browser/MiuiNavScreen;

    #calls: Lcom/android/browser/MiuiNavScreen;->onCloseTab(Lcom/android/browser/Tab;)V
    invoke-static {v1, v0}, Lcom/android/browser/MiuiNavScreen;->access$100(Lcom/android/browser/MiuiNavScreen;Lcom/android/browser/Tab;)V

    .line 92
    return-void
.end method
