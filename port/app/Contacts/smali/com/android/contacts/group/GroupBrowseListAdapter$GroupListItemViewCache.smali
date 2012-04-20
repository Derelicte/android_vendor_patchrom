.class public Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
.super Ljava/lang/Object;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupListItemViewCache"
.end annotation


# instance fields
.field public final accountHeader:Landroid/view/View;

.field public final accountHeaderExtraTopPadding:Landroid/view/View;

.field public final accountName:Landroid/widget/TextView;

.field public final accountType:Landroid/widget/TextView;

.field public final divider:Landroid/view/View;

.field public final groupMemberCount:Landroid/widget/TextView;

.field public final groupTitle:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;

.field private final photo0:Landroid/widget/ImageView;

.field private final photo0Shadow:Landroid/widget/ImageView;

.field private final photo1:Landroid/widget/ImageView;

.field private final photo1Shadow:Landroid/widget/ImageView;

.field private final photo2:Landroid/widget/ImageView;

.field public final photoShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photoShadows:Ljava/util/ArrayList;

    .line 266
    const v0, 0x7f0700cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0700cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0700bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0700cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    .line 271
    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    .line 272
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    .line 273
    const v0, 0x7f0700de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo0:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f0700dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo1:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0700db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo2:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const v0, 0x7f0700df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo0Shadow:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f0700dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo1Shadow:Landroid/widget/ImageView;

    .line 281
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photoShadows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo0Shadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photoShadows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photo1Shadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    .line 287
    return-void
.end method
