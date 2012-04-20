.class public Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StorageExplorerPage.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListAdapter"
.end annotation


# instance fields
.field private mFolderIcon:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 2
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 884
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 889
    invoke-virtual {p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    .line 890
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 880
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 904
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    .line 905
    .local v0, object:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 915
    if-nez p2, :cond_0

    .line 916
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040010

    invoke-virtual {v5, v6, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 918
    const v5, 0x7f0b0022

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 920
    .local v3, previewRegion:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 921
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 924
    .end local v3           #previewRegion:Landroid/widget/FrameLayout;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 925
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 926
    .local v1, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v1, :cond_1

    .line 927
    const-string v5, "fileInfo should not be null"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 929
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 930
    .local v0, allDataLoaded:Z
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->onAllDataLoaded(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/view/View;)V

    .line 931
    if-nez v0, :cond_3

    .line 932
    invoke-static {v1, p0, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->pushLoadAllDataTask(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 935
    :cond_3
    add-int/lit8 v2, p1, 0x7

    .line 936
    .local v2, nextPos:I
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 937
    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 939
    invoke-static {v1, v7, v7}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->pushLoadAllDataTask(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 945
    :cond_4
    :goto_0
    return-object p2

    .line 941
    :cond_5
    invoke-static {v1, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method public onAllDataLoaded(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/view/View;)V
    .locals 16
    .parameter "meta"
    .parameter "convertView"

    .prologue
    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 951
    .local v8, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v13

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_0

    .line 1025
    :goto_0
    return-void

    :cond_0
    move-object/from16 v4, p1

    .line 954
    check-cast v4, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 955
    .local v4, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    const v13, 0x7f0b0031

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 956
    .local v7, name:Landroid/widget/TextView;
    iget-object v13, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v2, v4

    .line 959
    check-cast v2, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 960
    .local v2, dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    if-nez v2, :cond_2

    .line 961
    const/4 v13, 0x0

    const-string v14, "should be DirInfo"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 971
    .end local v2           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    :goto_1
    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v2, v4

    .line 972
    check-cast v2, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 973
    .restart local v2       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    invoke-static {v13, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1300(Lcom/miui/gallery/app/StorageExplorerPage;Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;

    move-result-object v11

    .line 974
    .local v11, text:Ljava/lang/String;
    const v13, 0x7f0b0032

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 975
    .local v5, infoView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 976
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    :goto_2
    const v13, 0x7f0b0022

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 984
    .local v10, previewRegion:Landroid/widget/FrameLayout;
    const v13, 0x7f0b002f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    .line 986
    .local v9, previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/DirInfo;->getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v1

    .line 987
    .local v1, cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    if-eqz v1, :cond_6

    .line 988
    const v13, 0x7f020040

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 989
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    .line 990
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isModified()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 991
    const/4 v1, 0x0

    .line 993
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-virtual {v13}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020041

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v1, v13}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 963
    .end local v1           #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v5           #infoView:Landroid/widget/TextView;
    .end local v9           #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v10           #previewRegion:Landroid/widget/FrameLayout;
    .end local v11           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/DirInfo;->isRecentAlbum()Z

    move-result v6

    .line 964
    .local v6, isRecentAlbum:Z
    const v13, 0x7f0b0033

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v6, :cond_3

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v13, 0x8

    goto :goto_3

    .line 968
    .end local v2           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v6           #isRecentAlbum:Z
    :cond_4
    const v13, 0x7f0b0033

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 978
    .restart local v2       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .restart local v5       #infoView:Landroid/widget/TextView;
    .restart local v11       #text:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 996
    .restart local v1       #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .restart local v9       #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .restart local v10       #previewRegion:Landroid/widget/FrameLayout;
    :cond_6
    const v13, 0x7f02003c

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 997
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1000
    .end local v1           #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v2           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v5           #infoView:Landroid/widget/TextView;
    .end local v9           #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v10           #previewRegion:Landroid/widget/FrameLayout;
    .end local v11           #text:Ljava/lang/String;
    :cond_7
    const v13, 0x7f0b0032

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1001
    .local v12, txtView:Landroid/widget/TextView;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v14}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 1002
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    const-string v13, "yyyy-MM-dd kk:mm"

    iget-wide v14, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    invoke-static {v13, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    :goto_4
    const v13, 0x7f0b0022

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1014
    .restart local v10       #previewRegion:Landroid/widget/FrameLayout;
    const v13, 0x7f02006c

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1016
    const v13, 0x7f0b002f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    .line 1018
    .local v3, fileImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    .line 1019
    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1020
    const/4 v4, 0x0

    .line 1022
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-virtual {v13}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02006d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v4, v13}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1005
    .end local v3           #fileImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v10           #previewRegion:Landroid/widget/FrameLayout;
    :cond_9
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v14}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ne v13, v14, :cond_a

    .line 1006
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    iget-wide v13, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    invoke-static {v13, v14}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1009
    :cond_a
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
