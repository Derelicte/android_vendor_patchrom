.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field private final mAccountWritable:Z

.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;Z)V
    .locals 0
    .parameter
    .parameter "editor"
    .parameter "accountWritable"

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1889
    iput-boolean p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mAccountWritable:Z

    .line 1890
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;ZLcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1882
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;Z)V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .parameter "removedEditor"

    .prologue
    .line 1926
    return-void
.end method

.method public onPickFromGalleryChosen()V
    .locals 5

    .prologue
    .line 1978
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1981
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1982
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x4

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1202(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 1983
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b004b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1951
    return-void
.end method

.method public onRequest(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 1894
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1899
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mAccountWritable:Z

    if-eqz v1, :cond_4

    .line 1900
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1901
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1902
    const/4 v0, 0x3

    .line 1917
    .local v0, mode:I
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    .line 1904
    .end local v0           #mode:I
    :cond_2
    const/4 v0, 0x2

    .restart local v0       #mode:I
    goto :goto_1

    .line 1907
    .end local v0           #mode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #mode:I
    goto :goto_1

    .line 1910
    .end local v0           #mode:I
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1911
    const/4 v0, 0x1

    .restart local v0       #mode:I
    goto :goto_1
.end method

.method public onTakePhotoChosen()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1958
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1961
    :try_start_0
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1962
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoFileName()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2400(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/io/File;)Ljava/io/File;

    .line 1963
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2300(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 1965
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x4

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1202(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 1966
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1967
    :catch_0
    move-exception v0

    .line 1968
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b004b

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 6

    .prologue
    .line 1934
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1935
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1936
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1937
    .local v0, childView:Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 1938
    check-cast v2, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1939
    .local v2, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    .line 1940
    .local v4, photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setSuperPrimary(Z)V

    .line 1935
    .end local v2           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4           #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1940
    .restart local v2       #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .restart local v4       #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1943
    .end local v0           #childView:Landroid/view/View;
    .end local v2           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4           #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_2
    return-void
.end method
