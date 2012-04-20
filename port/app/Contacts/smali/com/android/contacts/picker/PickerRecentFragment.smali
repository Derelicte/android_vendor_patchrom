.class public Lcom/android/contacts/picker/PickerRecentFragment;
.super Landroid/app/ListFragment;
.source "PickerRecentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactPhonePickerActivity$OnPageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private final mRecentLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/MatrixCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/picker/PickerRecentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/picker/PickerRecentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mHeaderView:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    .line 68
    new-instance v0, Lcom/android/contacts/picker/PickerRecentFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/picker/PickerRecentFragment$1;-><init>(Lcom/android/contacts/picker/PickerRecentFragment;)V

    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mRecentLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/picker/PickerRecentFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/picker/PickerRecentFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/picker/PickerRecentFragment;Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/contacts/picker/PickerRecentFragment;->bindView(Landroid/database/MatrixCursor;)V

    return-void
.end method

.method private bindView(Landroid/database/MatrixCursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 62
    new-instance v0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;-><init>(Lcom/android/contacts/picker/PickerRecentFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const v1, 0x7f04007f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mTitle:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mHeaderView:Landroid/view/View;

    .line 47
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    const v1, 0x7f070108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mEmptyView:Landroid/view/View;

    .line 51
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 219
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 220
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 222
    .local v0, v:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->setCheckedItem(IZ)V

    .line 225
    .end local v0           #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    return-void

    .line 222
    .restart local v0       #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 210
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mAdapter:Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->notifyDataSetChanged()V

    .line 215
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/picker/PickerRecentFragment;->mRecentLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 59
    return-void
.end method
