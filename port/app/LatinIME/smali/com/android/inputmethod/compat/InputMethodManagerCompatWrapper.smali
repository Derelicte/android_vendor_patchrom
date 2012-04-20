.class public Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"


# static fields
.field private static final METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

.field private static final METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

.field private static final METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

.field private static final METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

.field private static final METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

.field public static final SUBTYPE_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

.field private mLatinImePackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    const-class v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    .line 50
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getCurrentInputMethodSubtype"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    .line 52
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getEnabledInputMethodSubtypeList"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/view/inputmethod/InputMethodInfo;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    .line 55
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getShortcutInputMethodsAndSubtypes"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    .line 57
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "setInputMethodAndSubtype"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    .line 61
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "switchToLastInputMethod"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    .line 64
    new-instance v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {v2}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;-><init>()V

    sput-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 72
    sget-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    .line 73
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    return-object v0
.end method

.method public static getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getInstance() is called before initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 96
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iput-object p0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 97
    sget-object v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getInstance()Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    .line 103
    return-void
.end method


# virtual methods
.method public getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    iget-object v2, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-virtual {v2}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getInputLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyboard"

    const-string v5, ""

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, o:Ljava/lang/Object;
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v0, v6}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 231
    :cond_0
    return-object v2

    .line 227
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, imis:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    iget-object v3, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 229
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    new-instance v3, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-direct {v3, v1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;
    .locals 13
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getEnabledLanguages(Z)[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, languages:[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v11, subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    move-object v6, v8

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v6, v7

    .line 122
    .local v3, lang:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    const-string v4, "keyboard"

    const-string v5, ""

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    .end local v3           #lang:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #languages:[Ljava/lang/String;
    .end local v9           #len$:I
    .end local v11           #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    :goto_1
    aput-object v0, v12, v1

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v0

    invoke-static {v4, v2, v5, v12}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 128
    .local v10, retval:Ljava/lang/Object;
    if-eqz v10, :cond_1

    instance-of v0, v10, Ljava/util/List;

    if-eqz v0, :cond_1

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 147
    .end local v10           #retval:Ljava/lang/Object;
    :cond_2
    :goto_2
    return-object v11

    :cond_3
    move-object v0, v2

    .line 126
    goto :goto_1

    .line 147
    .restart local v10       #retval:Ljava/lang/Object;
    :cond_4
    invoke-static {v10}, Lcom/android/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_2
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v5, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v7, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, retval:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 203
    :cond_1
    :goto_0
    return-object v4

    .line 192
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, shortcutMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    move-object v3, v2

    .line 194
    check-cast v3, Ljava/util/Map;

    .line 195
    .local v3, retvalMap:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, key:Ljava/lang/Object;
    instance-of v5, v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_3

    .line 197
    sget-object v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "Class type error."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 198
    goto :goto_0

    .line 200
    :cond_3
    new-instance v7, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-object v5, v1

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v7, v5}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 6
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 210
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInputMethodPicker()V
    .locals 28

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 318
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-boolean v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v5, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v21

    .line 245
    .local v21, myImi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    .line 247
    .local v7, myImsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v14

    .line 248
    .local v14, currentIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 249
    .local v9, imiList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    new-instance v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 261
    .local v6, myImsCount:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    .line 262
    .local v17, imiCount:I
    add-int v5, v6, v17

    new-array v0, v5, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 264
    .local v20, items:[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 265
    .local v13, checkedItem:I
    const/16 v19, 0x0

    .line 266
    .local v19, index:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 267
    .local v22, myImiLabel:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v6, :cond_3

    .line 268
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 269
    .local v18, ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    move/from16 v13, v19

    .line 271
    :cond_2
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x1

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x2

    const-string v25, ")"

    aput-object v25, v5, v24

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 274
    .local v23, title:Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 275
    add-int/lit8 v19, v19, 0x1

    .line 267
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 278
    .end local v18           #ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v23           #title:Ljava/lang/CharSequence;
    :cond_3
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 279
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 280
    .local v16, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 281
    .restart local v23       #title:Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 282
    add-int/lit8 v19, v19, 0x1

    .line 278
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 285
    .end local v16           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v23           #title:Ljava/lang/CharSequence;
    :cond_4
    new-instance v12, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    .line 295
    .local v12, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 296
    .local v8, service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    invoke-virtual {v8}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v10, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 297
    .local v10, token:Landroid/os/IBinder;
    new-instance v4, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;ILjava/util/List;Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;Ljava/util/List;Landroid/os/IBinder;)V

    .line 313
    .local v4, selectionListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    const v25, 0x7f0b00e8

    invoke-virtual/range {v24 .. v25}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v24, 0x7f0b00e9

    move/from16 v0, v24

    invoke-virtual {v5, v0, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v13, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 317
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method
