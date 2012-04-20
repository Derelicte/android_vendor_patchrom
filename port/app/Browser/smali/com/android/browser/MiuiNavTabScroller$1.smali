.class Lcom/android/browser/MiuiNavTabScroller$1;
.super Landroid/database/DataSetObserver;
.source "MiuiNavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavTabScroller;->setAdapter(Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiNavTabScroller;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavTabScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller$1;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 180
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$1;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v0}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged()V

    .line 181
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 186
    return-void
.end method
