CKEDITOR.editorConfig = function( config )
{
    config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
    config.filebrowserImageUploadUrl = '/ckeditor/pictures';

    config.toolbar = 'article';
    config.toolbar_article = [
        
       
        { name: 'editing', items: [ 'Find',  '-', 'SelectAll'] },
        { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'Iframe' ] },
        { name: 'links', items: [ 'Link', 'Unlink'] },
        { name: 'styles', items: [ 'Styles', 'Format' ] },
        '/',
        { name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote' ] },
        { name: 'alignment', items: [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ] },
        { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
        
        { name: 'tools', items: [ 'Maximize', '-', 'Preview' ] }
    ];

    config.toolbar = 'comment';
    config.toolbar_comment = [
        { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
        { name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote' ] },
        { name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
        { name: 'tools', items: [ 'Maximize', '-', 'Preview' ] }
    ];




};
