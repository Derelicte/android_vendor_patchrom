.class Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 4
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    .line 945
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    const v2, 0x7f0b0015

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mInfos:[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;
    invoke-static {p1}, Lcom/miui/gallery/app/PhotoPage;->access$1300(Lcom/miui/gallery/app/PhotoPage;)[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 946
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 950
    move-object v1, p2

    .line 951
    .local v1, resultView:Landroid/view/View;
    if-nez v1, :cond_0

    .line 952
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/miui/gallery/app/PhotoPage;->access$1400(Lcom/miui/gallery/app/PhotoPage;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 954
    :cond_0
    const v3, 0x7f0b0015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 955
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f0b0014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 956
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    iget v3, v3, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;->mIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    iget v3, v3, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 958
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 963
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 965
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 966
    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const/16 v4, 0x8

    .line 969
    const/4 v2, 0x0

    .line 970
    packed-switch p3, :pswitch_data_0

    move v3, v4

    .line 1005
    :goto_1
    if-eqz v2, :cond_0

    .line 1006
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1008
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 985
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v4, v4, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/miui/gallery/app/Wallpaper;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 993
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    instance-of v4, v1, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v4, :cond_2

    .line 996
    new-instance v4, Ljava/io/File;

    move-object v0, v1

    check-cast v0, Lcom/miui/gallery/data/StorageMediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 998
    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.activities.AttachPhotoActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1000
    const-string v4, "mimeType"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
