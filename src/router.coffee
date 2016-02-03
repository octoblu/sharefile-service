SharefileController = require './controllers/sharefile-controller'

class Router
  route: (app) =>
    sharefileController = new SharefileController {}


    # app.get '/download/:itemId', sharefileController.download

    app.get '/items', sharefileController.list
    app.get '/items-by-path', sharefileController.getItemByPath
    app.get '/items-by-path/metadata', sharefileController.getMetadataByPath
    app.get '/items-by-path/children', sharefileController.getChildrenByPath
    app.get '/items-by-path/treeview', sharefileController.getTreeViewByPath
    app.post '/items-by-path/upload', sharefileController.uploadFileByPath
    app.get '/items/:itemId', sharefileController.getItemById
    app.get '/items/:itemId/metadata', sharefileController.getMetadataById
    app.get '/items/:itemId/children', sharefileController.getChildrenById
    app.get '/items/:itemId/treeview', sharefileController.getTreeViewById
    app.post '/items/:itemId/upload', sharefileController.uploadFileById
    app.get '/folders/home', sharefileController.getHomeFolder

    app.post '/items/:itemId', sharefileController.shareById
    app.post '/items-by-path/share', sharefileController.shareByPath
    # Still needs webhooks from ShareFile
    # app.get '/change/:itemId', sharefileController.change

module.exports = Router
