.class public Lcom/android/contacts/picker/PickerGroupsFragment;
.super Landroid/app/Fragment;
.source "PickerGroupsFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactPhonePickerActivity$OnPageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;,
        Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;,
        Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;
    }
.end annotation


# static fields
.field public static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

.field private mCheckedGroups:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mInflator:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ExpandableListView;

.field private mQueryHandler:Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-class v0, Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/picker/PickerGroupsFragment;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/picker/PickerGroupsFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    .line 66
    iput-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    .line 115
    new-instance v0, Lcom/android/contacts/picker/PickerGroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/picker/PickerGroupsFragment$1;-><init>(Lcom/android/contacts/picker/PickerGroupsFragment;)V

    iput-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/picker/PickerGroupsFragment;Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mQueryHandler:Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/picker/PickerGroupsFragment;Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;)Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mQueryHandler:Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/contacts/picker/PickerGroupsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mInflator:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 73
    const v4, 0x7f04007d

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, rootView:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;

    .line 75
    invoke-virtual {p0, p3}, Lcom/android/contacts/picker/PickerGroupsFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mInflator:Landroid/view/LayoutInflater;

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;

    .line 78
    const v4, 0x1020004

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, emptyView:Landroid/view/View;
    const v4, 0x7f070108

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, v:Landroid/widget/TextView;
    const v4, 0x7f0b0050

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    if-eqz p3, :cond_0

    const-string v4, "checked_groups"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "checked_groups"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 86
    iget-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    .end local v1           #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 111
    iput-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    .line 113
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 452
    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    const-string v1, "checked_groups"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 457
    .end local v0           #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerGroupsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 103
    return-void
.end method
