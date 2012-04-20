.class Lcom/android/providers/downloads/ui/DownloadList$1;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .parameter "position"
    .parameter "itemId"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I
    invoke-static {v0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;I)I

    .line 206
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 207
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$502(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadAdapter;)Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 208
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/EditableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$500(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method
