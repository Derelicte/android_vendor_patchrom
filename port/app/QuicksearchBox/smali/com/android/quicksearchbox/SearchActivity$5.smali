.class Lcom/android/quicksearchbox/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$5;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$5;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->onVoiceSearchClicked()V

    .line 152
    return-void
.end method
